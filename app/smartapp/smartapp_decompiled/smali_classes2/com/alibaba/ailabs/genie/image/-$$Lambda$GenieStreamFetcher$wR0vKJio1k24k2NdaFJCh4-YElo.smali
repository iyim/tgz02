.class public final synthetic Lcom/alibaba/ailabs/genie/image/-$$Lambda$GenieStreamFetcher$wR0vKJio1k24k2NdaFJCh4-YElo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;

.field private final synthetic f$1:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/-$$Lambda$GenieStreamFetcher$wR0vKJio1k24k2NdaFJCh4-YElo;->f$0:Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/-$$Lambda$GenieStreamFetcher$wR0vKJio1k24k2NdaFJCh4-YElo;->f$1:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/-$$Lambda$GenieStreamFetcher$wR0vKJio1k24k2NdaFJCh4-YElo;->f$0:Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/-$$Lambda$GenieStreamFetcher$wR0vKJio1k24k2NdaFJCh4-YElo;->f$1:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->lambda$loadData$0$GenieStreamFetcher(Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    return-void
.end method
