.class public Lcom/alibaba/ailabs/appbox/db/dao/AliJSONArrayConverter;
.super Ljava/lang/Object;
.source "AliJSONArrayConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static revert(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 1
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance p0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    return-object p0

    .line 25
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static revert(Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
