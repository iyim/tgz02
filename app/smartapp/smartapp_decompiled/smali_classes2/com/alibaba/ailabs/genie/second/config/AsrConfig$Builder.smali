.class public final Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;
.super Ljava/lang/Object;
.source "AsrConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/config/AsrConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundService:Z

.field private mListenerType:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

.field private mResultMode:I

.field private mShowUI:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;->mBackgroundService:Z

    const/4 v1, 0x1

    .line 71
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;->mShowUI:Z

    .line 72
    iput v0, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;->mResultMode:I

    .line 73
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;->DEFAULT_LISTENER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;->mListenerType:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;->mBackgroundService:Z

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;->mShowUI:Z

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;->mResultMode:I

    return p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;->mListenerType:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    return-object p0
.end method


# virtual methods
.method public backgroundService(Z)Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;->mBackgroundService:Z

    return-object p0
.end method

.method public build()Lcom/alibaba/ailabs/genie/second/config/AsrConfig;
    .locals 2

    .line 99
    new-instance v0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;-><init>(Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;Lcom/alibaba/ailabs/genie/second/config/AsrConfig$1;)V

    return-object v0
.end method

.method public listenerType(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;)Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;->mListenerType:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    return-object p0
.end method

.method public resultMode(I)Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;
    .locals 0

    .line 89
    iput p1, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;->mResultMode:I

    return-object p0
.end method

.method public showUI(Z)Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;->mShowUI:Z

    return-object p0
.end method
