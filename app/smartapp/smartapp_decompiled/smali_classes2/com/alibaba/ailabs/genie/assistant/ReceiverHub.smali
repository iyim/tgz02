.class public Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;
.super Ljava/lang/Object;
.source "ReceiverHub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/ReceiverHub$ReceiverHubHolder;
    }
.end annotation


# instance fields
.field private mScreenListener:Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/assistant/ReceiverHub$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;
    .locals 1

    .line 13
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub$ReceiverHubHolder;->access$000()Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getScreenListener()Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->mScreenListener:Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;

    return-object v0
.end method

.method public setScreenListener(Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->mScreenListener:Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;

    return-void
.end method
