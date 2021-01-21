class Destination 
{
  private:

    int64_t lat;
    int64_t lon;
    int32_t alt;

  public:

    Destination();
    Destination(int64_t lat, int64_t lon, int32_t alt);
    ~Destination();

    int64_t getLat();
    int64_t getLon();
    int32_t getAlt();

    void setLat(int64_t lat);
    void setLon(int64_t lon);
    void setAlt(int32_t alt);
};
