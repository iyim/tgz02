.class public Lcom/alibaba/genie/shopping/event/EventDispatcher;
.super Landroid/os/Handler;
.source "EventDispatcher.java"


# static fields
.field public static sInstance:Lcom/alibaba/genie/shopping/event/EventDispatcher;


# instance fields
.field public mListener:Lcom/alibaba/genie/shopping/event/EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/genie/shopping/event/EventListener;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/alibaba/genie/shopping/event/EventDispatcher;->mListener:Lcom/alibaba/genie/shopping/event/EventListener;

    .line 24
    iput-object p1, p0, Lcom/alibaba/genie/shopping/event/EventDispatcher;->mListener:Lcom/alibaba/genie/shopping/event/EventListener;

    return-void
.end method

.method public static getInstance(Lcom/alibaba/genie/shopping/event/EventListener;)Lcom/alibaba/genie/shopping/event/EventDispatcher;
    .locals 1

    .line 17
    sget-object v0, Lcom/alibaba/genie/shopping/event/EventDispatcher;->sInstance:Lcom/alibaba/genie/shopping/event/EventDispatcher;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/alibaba/genie/shopping/event/EventDispatcher;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/event/EventDispatcher;-><init>(Lcom/alibaba/genie/shopping/event/EventListener;)V

    sput-object v0, Lcom/alibaba/genie/shopping/event/EventDispatcher;->sInstance:Lcom/alibaba/genie/shopping/event/EventDispatcher;

    .line 20
    :cond_0
    sget-object p0, Lcom/alibaba/genie/shopping/event/EventDispatcher;->sInstance:Lcom/alibaba/genie/shopping/event/EventDispatcher;

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/genie/shopping/event/EventDispatcher;->mListener:Lcom/alibaba/genie/shopping/event/EventListener;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p1}, Lcom/alibaba/genie/shopping/event/EventListener;->handleEvent(Landroid/os/Message;)V

    .line 32
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setListener(Lcom/alibaba/genie/shopping/event/EventListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alibaba/genie/shopping/event/EventDispatcher;->mListener:Lcom/alibaba/genie/shopping/event/EventListener;

    return-void
.end method
