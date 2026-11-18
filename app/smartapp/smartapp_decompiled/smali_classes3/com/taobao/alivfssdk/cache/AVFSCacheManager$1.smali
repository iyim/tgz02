.class Lcom/taobao/alivfssdk/cache/AVFSCacheManager$1;
.super Landroid/support/v4/util/LruCache;
.source "AVFSCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/alivfssdk/cache/AVFSCacheManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/taobao/alivfssdk/cache/AVFSCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/alivfssdk/cache/AVFSCacheManager;


# direct methods
.method constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSCacheManager;I)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager$1;->this$0:Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/taobao/alivfssdk/cache/AVFSCache;

    check-cast p4, Lcom/taobao/alivfssdk/cache/AVFSCache;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager$1;->entryRemoved(ZLjava/lang/String;Lcom/taobao/alivfssdk/cache/AVFSCache;Lcom/taobao/alivfssdk/cache/AVFSCache;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Lcom/taobao/alivfssdk/cache/AVFSCache;Lcom/taobao/alivfssdk/cache/AVFSCache;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
