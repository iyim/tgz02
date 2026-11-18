.class public La/a/a/a/a/a/c;
.super Ljava/lang/Object;
.source "NetworkListenerWrapper.java"

# interfaces
.implements Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;


# instance fields
.field public a:Lcom/alibaba/genie/waft/gcs/network/api/Request;

.field public b:Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;


# direct methods
.method public constructor <init>(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V
    .locals 0
    .param p1    # Lcom/alibaba/genie/waft/gcs/network/api/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/a/a/a/a/a/c;->a:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    .line 3
    iput-object p2, p0, La/a/a/a/a/a/c;->b:Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/alibaba/genie/waft/gcs/network/api/Response;)V
    .locals 2
    .param p1    # Lcom/alibaba/genie/waft/gcs/network/api/Response;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/a/a/a/a/a/c;->b:Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;->onResponse(Lcom/alibaba/genie/waft/gcs/network/api/Response;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/genie/waft/gcs/network/api/Response;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, La/a/a/a/a/a/a$a;->a:La/a/a/a/a/a/a;

    .line 7
    iget-object v1, p0, La/a/a/a/a/a/c;->a:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    .line 8
    iget-object v1, v1, Lcom/alibaba/genie/waft/gcs/network/api/Request;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1, p1}, La/a/a/a/a/a/a;->a(Ljava/lang/String;Lcom/alibaba/genie/waft/gcs/network/api/Response;)V

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse() called with: response = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
