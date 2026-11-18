.class public Lcom/alibaba/ailabs/genie/assistant/Global;
.super Ljava/lang/Object;
.source "Global.java"


# static fields
.field public static SECURE_CONNECT_ENABLE:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "persist.sys.secure.connect.disable"

    .line 13
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Lcom/alibaba/ailabs/genie/assistant/Global;->SECURE_CONNECT_ENABLE:Z

    .line 17
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p0

    sget-boolean v0, Lcom/alibaba/ailabs/genie/assistant/Global;->SECURE_CONNECT_ENABLE:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setSecureConnectEnable(Z)V

    return-void
.end method
