require 'swagger_helper'

RSpec.describe 'api/v1/developers', type: :request do
  path '/api/v1/developers' do
    get('list developers') do
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create developer') do
      response(200, 'successful') do
        consumes 'application/json'
        parameter name: :developer, in: :body, schema: {
          type: :object,
          properties: {
            name: { type: :string },
            icon: { type: :string },
            location: { type: :string },
            experience: { type: :integer },
            bio: { type: :text },
            hourly_rate: { type: :integer },
            tech_stack: { type: :string },
            github: { type: :string },
            twitter: { type: :string },
            linkedin: { type: :string },
            available: { type: :boolean },
            title: { type: :string },
            phone: { type: :integer },
            user_id: { type: :string },
          },
          required: %w[name icon location experience bio hourly_rate tech_stack github twitter linkedin available title phone user_id]
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/api/v1/developers/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show developer') do
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    patch('update developer') do
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    put('update developer') do
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    delete('delete developer') do
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
