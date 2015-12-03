package com.example.sterling.coffee;

public class Mustache {
    private String mustache;
    private String mustacheURL;

    private void setMustacheInfo(String mustacheStyle){
        switch (mustacheStyle){
            case "Dapper":
                mustache="Handlebar";
                mustacheURL="https://en.wikipedia.org/wiki/Handlebar_moustache";
                break;
            case "Western":
                mustache="Horseshoe";
                mustacheURL="https://en.wikipedia.org/wiki/Horseshoe_moustache";
                break;
            case "Traditional":
                mustache="Fu Manchu";
                mustacheURL="https://en.wikipedia.org/wiki/Fu_Manchu_moustache";
                break;
            case "Inigo Montoya":
                mustache="The Original Mustache";
                mustacheURL="https://en.wikipedia.org/wiki/Moustache";
                break;
            case "Kindergartener":
                mustache="Clean Shaven";
                mustacheURL="https://en.wikipedia.org/wiki/Shaving";
                break;
        }
    }

    public void setMustache(String mustacheStyle) {setMustacheInfo(mustacheStyle);}

    public void setMustacheURL(String mustacheStyle) {setMustacheInfo(mustacheStyle);}

    public String getMustache() {return mustache;}

    public String getMustacheURL() {return mustacheURL;}
}
