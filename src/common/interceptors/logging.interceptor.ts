import {
  CallHandler,
  ExecutionContext,
  Injectable,
  Logger,
  NestInterceptor,
} from '@nestjs/common';
import { Request } from 'express';
import { Observable, tap } from 'rxjs';

@Injectable()
export class LoggingInterceptor implements NestInterceptor {
  private readonly logger = new Logger(LoggingInterceptor.name);

  intercept(context: ExecutionContext, next: CallHandler): Observable<unknown> {
    const req = context.switchToHttp().getRequest<Request>();
    const { method, url } = req;
    const inicio = Date.now();

    this.logger.log(`→ ${method} ${url}`);

    return next.handle().pipe(
      tap(() => {
        const ms = Date.now() - inicio;
        this.logger.log(`← ${method} ${url}  +${ms}ms`);
      }),
    );
  }
}
