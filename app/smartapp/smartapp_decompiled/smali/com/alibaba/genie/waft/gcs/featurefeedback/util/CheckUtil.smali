.class public Lcom/alibaba/genie/waft/gcs/featurefeedback/util/CheckUtil;
.super Ljava/lang/Object;
.source "CheckUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkEmail(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    const-string v0, "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"

    .line 25
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCellphone(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^((13[0-9])|(14[5,7])|(15[^4,\\D])|(17[0,6-8])|(18[0-9]))\\d{8}$"

    .line 41
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static isChinese(C)Z
    .locals 1

    const/16 v0, 0x4e00

    if-lt p0, v0, :cond_0

    const v0, 0x9fbb

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isChinese(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^[\u4e00-\u9fa5]+$"

    .line 171
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 173
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isChineseOrEnglish(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^[a-zA-Z\u4e00-\u9fa5]+$"

    .line 185
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 186
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 187
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isChineseOrNumericOrEnglish(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^[a-zA-Z0-9\u4e00-\u9fa5]+$"

    .line 178
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isChineseOrNumericOrEnglishOrSymbol(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^[a-zA-Z0-9\u4e00-\u9fa5\u3002\uff1a\uff1f\uff01\uff0c\u3001\uff1b\u201c\u201d\uff08\uff09\u2014\u2026~\uff0d\u300a\u300b+\\-*\u00f7/.:?!,;\"()-~\\[\\]]+$"

    .line 192
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 193
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 194
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static isChineseSymbol(C)Z
    .locals 1

    .line 352
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    .line 353
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->VERTICAL_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isCjkPunc(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x3001

    if-gt v1, p0, :cond_0

    const/16 v1, 0x3003

    if-gt p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x301d

    if-gt v1, p0, :cond_1

    const/16 v1, 0x301f

    if-gt p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isCnSymbol(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x3004

    if-gt v1, p0, :cond_0

    const/16 v1, 0x301c

    if-gt p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x3020

    if-gt v1, p0, :cond_1

    const/16 v1, 0x303f

    if-gt p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$"

    .line 55
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isEmpty(Landroid/os/Bundle;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 70
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isEmpty(Ljava/util/List;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 74
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 78
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty(Ljava/util/Set;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 82
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty(Lorg/json/JSONArray;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 86
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty([B)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 98
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty([I)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 94
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 90
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmptyOrZero(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/CheckUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0.00"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0.0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEnPunc(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x21

    if-gt v1, p0, :cond_0

    const/16 v1, 0x22

    if-gt p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x27

    if-eq p0, v1, :cond_4

    const/16 v1, 0x2c

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x2e

    if-eq p0, v1, :cond_4

    const/16 v1, 0x3a

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x3b

    if-eq p0, v1, :cond_4

    const/16 v1, 0x3f

    if-ne p0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public static isEnSymbol(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x40

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x2d

    if-eq p0, v1, :cond_7

    const/16 v1, 0x2f

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x23

    if-gt v1, p0, :cond_2

    const/16 v1, 0x26

    if-gt p0, v1, :cond_2

    return v0

    :cond_2
    const/16 v1, 0x28

    if-gt v1, p0, :cond_3

    const/16 v1, 0x2b

    if-gt p0, v1, :cond_3

    return v0

    :cond_3
    const/16 v1, 0x3c

    if-gt v1, p0, :cond_4

    const/16 v1, 0x3e

    if-gt p0, v1, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x5b

    if-gt v1, p0, :cond_5

    const/16 v1, 0x60

    if-gt p0, v1, :cond_5

    return v0

    :cond_5
    const/16 v1, 0x7b

    if-gt v1, p0, :cond_6

    const/16 v1, 0x7e

    if-gt p0, v1, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_7
    :goto_0
    return v0
.end method

.method public static isHttpUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 247
    invoke-static {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/CheckUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "(((https|http)?://)?([a-z0-9]+[.])|(www.))\\w+[.|\\/]([a-z0-9]{0,})?[[.]([a-z0-9]{0,})]+((/[\\S&&[^,;\u4e00-\u9fa5]]+)+)?([.][a-z0-9]{0,}+|/?)"

    .line 254
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 256
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isIdCard(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^[0-9X]+$"

    .line 227
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 228
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isIdNumberCard(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "(^\\d{15}$)|(^\\d{18}$)|(^\\d{17}(\\d|X|x)$)"

    .line 234
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 235
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 236
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isMatchLoginName(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^[a-zA-Z0-9@]+$"

    .line 213
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 214
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9]*"

    .line 154
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 155
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 156
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isNumericAndEnter(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9\n]*"

    .line 163
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 164
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isNumericOrEnglish(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^[a-zA-Z0-9]+$"

    .line 206
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 208
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isOrNumericOrEnglish(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^[a-zA-Z0-9@*+-=/#():\"?!~.,\']+$"

    .line 220
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 221
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 222
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isPunctuation(C)Z
    .locals 2

    .line 301
    invoke-static {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/CheckUtil;->isCjkPunc(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 302
    :cond_0
    invoke-static {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/CheckUtil;->isEnPunc(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x2018

    if-gt v0, p0, :cond_2

    const/16 v0, 0x201f

    if-gt p0, v0, :cond_2

    return v1

    :cond_2
    const v0, 0xff01

    if-eq p0, v0, :cond_9

    const v0, 0xff02

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const v0, 0xff07

    if-eq p0, v0, :cond_9

    const v0, 0xff0c

    if-ne p0, v0, :cond_4

    goto :goto_0

    :cond_4
    const v0, 0xff1a

    if-eq p0, v0, :cond_9

    const v0, 0xff1b

    if-ne p0, v0, :cond_5

    goto :goto_0

    :cond_5
    const v0, 0xff1f

    if-eq p0, v0, :cond_9

    const v0, 0xff61

    if-ne p0, v0, :cond_6

    goto :goto_0

    :cond_6
    const v0, 0xff0e

    if-ne p0, v0, :cond_7

    return v1

    :cond_7
    const v0, 0xff65

    if-ne p0, v0, :cond_8

    return v1

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_0
    return v1
.end method

.method public static isSymbol(C)Z
    .locals 2

    .line 265
    invoke-static {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/CheckUtil;->isCnSymbol(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 266
    :cond_0
    invoke-static {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/CheckUtil;->isEnSymbol(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x2010

    if-gt v0, p0, :cond_2

    const/16 v0, 0x2017

    if-gt p0, v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x2020

    if-gt v0, p0, :cond_3

    const/16 v0, 0x2027

    if-gt p0, v0, :cond_3

    return v1

    :cond_3
    const/16 v0, 0x2b00

    if-gt v0, p0, :cond_4

    const/16 v0, 0x2bff

    if-gt p0, v0, :cond_4

    return v1

    :cond_4
    const v0, 0xff03

    if-gt v0, p0, :cond_5

    const v0, 0xff06

    if-gt p0, v0, :cond_5

    return v1

    :cond_5
    const v0, 0xff08

    if-gt v0, p0, :cond_6

    const v0, 0xff0b

    if-gt p0, v0, :cond_6

    return v1

    :cond_6
    const v0, 0xff0d

    if-eq p0, v0, :cond_e

    const v0, 0xff0f

    if-ne p0, v0, :cond_7

    goto :goto_0

    :cond_7
    const v0, 0xff1c

    if-gt v0, p0, :cond_8

    const v0, 0xff1e

    if-gt p0, v0, :cond_8

    return v1

    :cond_8
    const v0, 0xff20

    if-eq p0, v0, :cond_e

    const v0, 0xff65

    if-ne p0, v0, :cond_9

    goto :goto_0

    :cond_9
    const v0, 0xff3b

    if-gt v0, p0, :cond_a

    const v0, 0xff40

    if-gt p0, v0, :cond_a

    return v1

    :cond_a
    const v0, 0xff5b

    if-gt v0, p0, :cond_b

    const v0, 0xff60

    if-gt p0, v0, :cond_b

    return v1

    :cond_b
    const v0, 0xff62

    if-eq p0, v0, :cond_e

    const v0, 0xff63

    if-ne p0, v0, :cond_c

    goto :goto_0

    :cond_c
    const/16 v0, 0x20

    if-eq p0, v0, :cond_e

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_0
    return v1
.end method

.method public static isSymbol(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "[`~!@#$%^&*()+=|{}\':;,\\\\[\\\\].<>/?\uff01\uffe5\u2026\uff08\uff09\u2014\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\u3002\uff0c\u3001\uff1f]"

    .line 199
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 200
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 201
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static notEmpty(Landroid/os/Bundle;)Z
    .locals 0

    .line 112
    invoke-static {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/CheckUtil;->isEmpty(Landroid/os/Bundle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static notEmpty(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static notEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 104
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static notEmpty(Ljava/util/List;)Z
    .locals 0

    .line 116
    invoke-static {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/CheckUtil;->isEmpty(Ljava/util/List;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static notEmpty(Ljava/util/Map;)Z
    .locals 0

    .line 120
    invoke-static {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/CheckUtil;->isEmpty(Ljava/util/Map;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static notEmpty(Ljava/util/Set;)Z
    .locals 0

    .line 124
    invoke-static {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/CheckUtil;->isEmpty(Ljava/util/Set;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static notEmpty(Lorg/json/JSONArray;)Z
    .locals 0

    .line 128
    invoke-static {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/CheckUtil;->isEmpty(Lorg/json/JSONArray;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static notEmpty([B)Z
    .locals 0

    .line 140
    invoke-static {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/CheckUtil;->isEmpty([B)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static notEmpty([I)Z
    .locals 0

    .line 136
    invoke-static {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/CheckUtil;->isEmpty([I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static notEmpty([Ljava/lang/Object;)Z
    .locals 0

    .line 132
    invoke-static {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/CheckUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
