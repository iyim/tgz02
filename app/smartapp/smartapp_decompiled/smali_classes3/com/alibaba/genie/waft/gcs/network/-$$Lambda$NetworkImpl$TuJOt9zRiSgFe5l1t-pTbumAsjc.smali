.class public final synthetic Lcom/alibaba/genie/waft/gcs/network/-$$Lambda$NetworkImpl$TuJOt9zRiSgFe5l1t-pTbumAsjc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;

.field private final synthetic f$1:Lcom/alibaba/genie/waft/gcs/network/api/Request;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;Lcom/alibaba/genie/waft/gcs/network/api/Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/network/-$$Lambda$NetworkImpl$TuJOt9zRiSgFe5l1t-pTbumAsjc;->f$0:Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;

    iput-object p2, p0, Lcom/alibaba/genie/waft/gcs/network/-$$Lambda$NetworkImpl$TuJOt9zRiSgFe5l1t-pTbumAsjc;->f$1:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/network/-$$Lambda$NetworkImpl$TuJOt9zRiSgFe5l1t-pTbumAsjc;->f$0:Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;

    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/network/-$$Lambda$NetworkImpl$TuJOt9zRiSgFe5l1t-pTbumAsjc;->f$1:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;->lambda$TuJOt9zRiSgFe5l1t-pTbumAsjc(Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;Lcom/alibaba/genie/waft/gcs/network/api/Request;)V

    return-void
.end method
