with ada.text_IO; use ada.text_io;

package globalTypes is

type specialType is (ped, gen, int, car, sur, obs, psy, neu, ort, der, opt, ent);
subtype ageType is integer range 1..125;
subtype roomNumberType is integer range 1..100;
subtype idType is string(1..9);

end globalTypes;
