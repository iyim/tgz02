.class public Lcom/alibaba/ailabs/genie/image/GenieUrlLoader$Factory;
.super Ljava/lang/Object;
.source "GenieUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/image/GenieUrlLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Lcom/bumptech/glide/load/model/GlideUrl;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static volatile ourNetwork:Lanetwork/channel/Network;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/alibaba/ailabs/genie/image/GenieUrlLoader$Factory;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Lanetwork/channel/Network;
    .locals 1

    .line 38
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/GenieUrlLoader$Factory;->getInternalClient()Lanetwork/channel/Network;

    move-result-object v0

    return-object v0
.end method

.method private static getInternalClient()Lanetwork/channel/Network;
    .locals 3

    .line 43
    sget-object v0, Lcom/alibaba/ailabs/genie/image/GenieUrlLoader$Factory;->ourNetwork:Lanetwork/channel/Network;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/alibaba/ailabs/genie/image/GenieUrlLoader$Factory;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/image/GenieUrlLoader$Factory;->ourNetwork:Lanetwork/channel/Network;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lanetwork/channel/degrade/DegradableNetwork;

    sget-object v2, Lcom/alibaba/ailabs/genie/image/GenieUrlLoader$Factory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lanetwork/channel/degrade/DegradableNetwork;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/image/GenieUrlLoader$Factory;->ourNetwork:Lanetwork/channel/Network;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/image/GenieUrlLoader$Factory;->ourNetwork:Lanetwork/channel/Network;

    return-object v0
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance p1, Lcom/alibaba/ailabs/genie/image/GenieUrlLoader;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/image/GenieUrlLoader;-><init>()V

    return-object p1
.end method

.method public teardown()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
