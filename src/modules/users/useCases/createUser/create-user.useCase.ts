import { Inject, Injectable } from '@nestjs/common';
import { CreateUserDTO } from '@modules/users/dtos/create-user.dto';
import { User } from '@modules/users/infra/typeorm/entities/user.entity';
import { IUserRepository } from '@modules/users/repositories/IUserRepository';

@Injectable()
export class CreateUserUseCase {
  constructor(
    @Inject('USERS_REPOSITORY')
    private ormRepository: IUserRepository,
  ) {}

  public async execute(user: CreateUserDTO): Promise<User> {
    return await this.ormRepository.create(user);
  }
}
