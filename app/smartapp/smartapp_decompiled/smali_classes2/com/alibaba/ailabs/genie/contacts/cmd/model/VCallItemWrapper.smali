.class public Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;
.super Ljava/lang/Object;
.source "VCallItemWrapper.java"


# static fields
.field public static final AUDIO:Ljava/lang/String; = "AUDIO"

.field public static final DEVICE:Ljava/lang/String; = "DEVICE"

.field public static final PSTN:Ljava/lang/String; = "PSTN"

.field private static final TAG:Ljava/lang/String;

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

.field retValue:Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;
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
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VCallItemWrapper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;
    .locals 1

    .line 37
    :try_start_0
    const-class v0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 40
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getRetCode()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->retCode:I

    return v0
.end method

.method public getRetMsg()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->retMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRetValue()Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->retValue:Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->success:Z

    return v0
.end method

.method public isValid()Z
    .locals 2

    .line 78
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->retCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 81
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->hasInstallCmRtc()Z

    move-result v0

    return v0
.end method

.method public isVoipToPstn()Z
    .locals 2

    .line 86
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->retCode:I

    const/16 v1, 0x6f

    if-eq v1, v0, :cond_1

    const/16 v1, 0x6e

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setRetCode(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->retCode:I

    return-void
.end method

.method public setRetMsg(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->retMsg:Ljava/lang/String;

    return-void
.end method

.method public setRetValue(Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->retValue:Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->success:Z

    return-void
.end method
