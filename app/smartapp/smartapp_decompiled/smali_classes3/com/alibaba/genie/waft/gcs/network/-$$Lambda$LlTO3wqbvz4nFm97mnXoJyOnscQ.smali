.class public final synthetic Lcom/alibaba/genie/waft/gcs/network/-$$Lambda$LlTO3wqbvz4nFm97mnXoJyOnscQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/genie/waft/gcs/network/api/Request;

.field private final synthetic f$1:Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/network/-$$Lambda$LlTO3wqbvz4nFm97mnXoJyOnscQ;->f$0:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    iput-object p2, p0, Lcom/alibaba/genie/waft/gcs/network/-$$Lambda$LlTO3wqbvz4nFm97mnXoJyOnscQ;->f$1:Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/network/-$$Lambda$LlTO3wqbvz4nFm97mnXoJyOnscQ;->f$0:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/network/-$$Lambda$LlTO3wqbvz4nFm97mnXoJyOnscQ;->f$1:Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V

    return-void
.end method
