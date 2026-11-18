.class public Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/OpenCmd;
.super Ljava/lang/Object;
.source "OpenCmd.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/utils/proguard/IKeepFieldName;


# static fields
.field public static final CMD_OPEN:Ljava/lang/String; = "/Open"

.field public static final CMD_PALYINDEX:Ljava/lang/String; = "/PlayIndex"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field index:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "index"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OpenCmd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/OpenCmd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/OpenCmd;
    .locals 1

    .line 24
    :try_start_0
    const-class v0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/OpenCmd;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/OpenCmd;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 27
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/OpenCmd;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/OpenCmd;->index:I

    return v0
.end method

.method public setIndex(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/OpenCmd;->index:I

    return-void
.end method
