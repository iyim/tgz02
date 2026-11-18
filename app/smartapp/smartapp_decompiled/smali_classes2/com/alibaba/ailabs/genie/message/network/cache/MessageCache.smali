.class public Lcom/alibaba/ailabs/genie/message/network/cache/MessageCache;
.super Ljava/lang/Object;
.source "MessageCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageCache"

.field private static mCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;",
            ">;"
        }
    .end annotation
.end field

.field private static mCallbackQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/network/cache/MessageCache;->mCacheList:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/network/cache/MessageCache;->mUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/network/cache/MessageCache;->mCallbackQueue:Ljava/util/LinkedList;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 22
    sget-object v0, Lcom/alibaba/ailabs/genie/message/network/cache/MessageCache;->mUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 22
    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/message/network/cache/MessageCache;->dispatchResult(ILjava/lang/String;Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static dispatchResult(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    :goto_0
    sget-object v1, Lcom/alibaba/ailabs/genie/message/network/cache/MessageCache;->mCallbackQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 63
    sget-object v1, Lcom/alibaba/ailabs/genie/message/network/cache/MessageCache;->mCallbackQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;

    invoke-interface {v1, p0, p1, p2}, Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getMessagesCache()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;",
            ">;"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/alibaba/ailabs/genie/message/network/cache/MessageCache;->mCacheList:Ljava/util/List;

    return-object v0
.end method

.method public static listMessage(Landroid/content/Context;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
    .locals 2

    .line 33
    sget-object v0, Lcom/alibaba/ailabs/genie/message/network/cache/MessageCache;->mCacheList:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/genie/message/network/cache/MessageCache;->mCacheList:Ljava/util/List;

    const-string v1, "0"

    invoke-interface {p1, p0, v1, v0}, Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/message/network/cache/MessageCache;->updateCacheMessage(Landroid/content/Context;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static updateCacheMessage(Landroid/content/Context;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
    .locals 2

    .line 41
    sget-object v0, Lcom/alibaba/ailabs/genie/message/network/cache/MessageCache;->mUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x3

    .line 43
    new-instance v1, Lcom/alibaba/ailabs/genie/message/network/cache/MessageCache$1;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/message/network/cache/MessageCache$1;-><init>()V

    invoke-interface {p0, p1, v0, v1}, Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;->listAllMessages(IILcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 56
    sget-object p0, Lcom/alibaba/ailabs/genie/message/network/cache/MessageCache;->mCallbackQueue:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
