class Vehicle 
{
  private:

    int8_t id;
    int8_t pos;

  public:

    Vehicle();
    Vehicle(int8_t id, int8_t pos);
    ~Vehicle();

    int8_t getId();
    int8_t getPos();

    void setId(int8_t id);
    void setPos(int8_t pos);
};
