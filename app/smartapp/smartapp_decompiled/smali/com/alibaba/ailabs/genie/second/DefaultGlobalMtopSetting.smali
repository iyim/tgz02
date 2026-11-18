.class public final Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;
.super Ljava/lang/Object;
.source "DefaultGlobalMtopSetting.java"


# static fields
.field private static sMtop:Lmtopsdk/mtop/intf/Mtop;

.field private static sMtopConfig:Lcom/alibaba/ailabs/genie/second/config/MtopConfig;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getMtop()Lmtopsdk/mtop/intf/Mtop;
    .locals 1

    .line 22
    sget-object v0, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->sMtop:Lmtopsdk/mtop/intf/Mtop;

    return-object v0
.end method

.method public static getMtopConfig()Lcom/alibaba/ailabs/genie/second/config/MtopConfig;
    .locals 1

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->sMtopConfig:Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    return-object v0
.end method

.method public static isMtopAdapter()Z
    .locals 1

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->sMtopConfig:Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->isAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setMtop(Lmtopsdk/mtop/intf/Mtop;)V
    .locals 0

    .line 18
    sput-object p0, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->sMtop:Lmtopsdk/mtop/intf/Mtop;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setMtopConfig(Lcom/alibaba/ailabs/genie/second/config/MtopConfig;)V
    .locals 0

    .line 26
    sput-object p0, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->sMtopConfig:Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
