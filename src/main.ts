import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  const PORT = process.env.PORT;
  await app.listen(PORT, () => {
    console.log(
      `app: ${process.env.NODE_ENV} is c listening at port: ${process.env.PORT}`,
    );
  });
}
bootstrap();
