.class Lcom/alibaba/ailabs/genie/message/MessageCenterImp$MessageHandler;
.super Landroid/os/Handler;
.source "MessageCenterImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/message/MessageCenterImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/message/MessageCenterImp$1;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp$MessageHandler;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
