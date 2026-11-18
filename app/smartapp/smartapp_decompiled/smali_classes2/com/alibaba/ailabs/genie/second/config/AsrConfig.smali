.class public final Lcom/alibaba/ailabs/genie/second/config/AsrConfig;
.super Ljava/lang/Object;
.source "AsrConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;,
        Lcom/alibaba/ailabs/genie/second/config/AsrConfig$AsrMode;
    }
.end annotation


# instance fields
.field private mBackgroundService:Z

.field private mListenerType:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

.field private mResultMode:I

.field private mShowUI:Z


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;->access$000(Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;->mBackgroundService:Z

    .line 64
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;->access$100(Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;->mShowUI:Z

    .line 65
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;->access$200(Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;->mResultMode:I

    .line 66
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;->access$300(Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;->mListenerType:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;Lcom/alibaba/ailabs/genie/second/config/AsrConfig$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;-><init>(Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getListenerType()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;->mListenerType:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    return-object v0
.end method

.method public getResultMode()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;->mResultMode:I

    return v0
.end method

.method public isBackgroundService()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;->mBackgroundService:Z

    return v0
.end method

.method public isShowUI()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;->mShowUI:Z

    return v0
.end method

.method public setBackgroundService(Z)Lcom/alibaba/ailabs/genie/second/config/AsrConfig;
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;->mBackgroundService:Z

    return-object p0
.end method

.method public setListenerType(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;)Lcom/alibaba/ailabs/genie/second/config/AsrConfig;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;->mListenerType:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    return-object p0
.end method

.method public setResultMode(I)Lcom/alibaba/ailabs/genie/second/config/AsrConfig;
    .locals 0

    .line 49
    iput p1, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;->mResultMode:I

    return-object p0
.end method

.method public setShowUI(Z)Lcom/alibaba/ailabs/genie/second/config/AsrConfig;
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;->mShowUI:Z

    return-object p0
.end method
