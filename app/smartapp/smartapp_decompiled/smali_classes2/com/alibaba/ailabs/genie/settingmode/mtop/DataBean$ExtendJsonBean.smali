.class public Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ExtendJsonBean;
.super Ljava/lang/Object;
.source "DataBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendJsonBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ExtendJsonBean$TtsConfigBean;
    }
.end annotation


# instance fields
.field private ttsConfig:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ExtendJsonBean$TtsConfigBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getTtsConfig()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ExtendJsonBean$TtsConfigBean;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ExtendJsonBean;->ttsConfig:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ExtendJsonBean$TtsConfigBean;

    return-object v0
.end method

.method public setTtsConfig(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ExtendJsonBean$TtsConfigBean;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ExtendJsonBean;->ttsConfig:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ExtendJsonBean$TtsConfigBean;

    return-void
.end method
