.class public Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;
.super Ljava/lang/Object;
.source "VCallItemWrapper.java"


# static fields
.field public static final AUDIO:Ljava/lang/String; = "AUDIO"

.field private static final TAG:Ljava/lang/String; = "contacts_select"

.field public static final VIDEO:Ljava/lang/String; = "VIDEO"


# instance fields
.field retCode:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "retCode"
    .end annotation
.end field

.field retMsg:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "retMsg"
    .end annotation
.end field

.field retValue:Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "retValue"
    .end annotation
.end field

.field success:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "success"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;
    .locals 1

    .line 34
    :try_start_0
    const-class v0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "contacts_select"

    .line 37
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getRetCode()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;->retCode:I

    return v0
.end method

.method public getRetMsg()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;->retMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRetValue()Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;->retValue:Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;->success:Z

    return v0
.end method

.method public isValid()Z
    .locals 2

    .line 75
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;->retCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setRetCode(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;->retCode:I

    return-void
.end method

.method public setRetMsg(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;->retMsg:Ljava/lang/String;

    return-void
.end method

.method public setRetValue(Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;->retValue:Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;->success:Z

    return-void
.end method
