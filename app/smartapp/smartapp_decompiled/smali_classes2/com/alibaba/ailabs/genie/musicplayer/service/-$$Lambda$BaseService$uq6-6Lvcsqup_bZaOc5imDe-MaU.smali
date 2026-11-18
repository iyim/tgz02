.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$BaseService$uq6-6Lvcsqup_bZaOc5imDe-MaU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$BaseService$uq6-6Lvcsqup_bZaOc5imDe-MaU;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$BaseService$uq6-6Lvcsqup_bZaOc5imDe-MaU;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->lambda$onRefresh$1$BaseService()V

    return-void
.end method
