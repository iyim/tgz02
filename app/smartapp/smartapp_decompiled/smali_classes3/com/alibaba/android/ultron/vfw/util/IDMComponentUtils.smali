.class public Lcom/alibaba/android/ultron/vfw/util/IDMComponentUtils;
.super Ljava/lang/Object;
.source "IDMComponentUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getListener(Lcom/taobao/android/ultron/common/model/IDMComponent;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    if-eqz p0, :cond_1

    .line 9
    invoke-interface {p0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    const-string v0, "listener"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
