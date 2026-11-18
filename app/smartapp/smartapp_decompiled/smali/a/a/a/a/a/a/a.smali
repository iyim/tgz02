.class public La/a/a/a/a/a/a;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/a/a/a$a;
    }
.end annotation


# instance fields
.field public a:La/a/a/a/a/a/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/a/a/e/a<",
            "Ljava/lang/String;",
            "Lcom/alibaba/genie/waft/gcs/network/api/Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/a/a/a/a/a/e/a;

    const/high16 v1, 0x1e00000

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2}, La/a/a/a/a/a/e/a;-><init>(IF)V

    iput-object v0, p0, La/a/a/a/a/a/a;->a:La/a/a/a/a/a/e/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/network/api/Response;
    .locals 4

    .line 4
    iget-object v0, p0, La/a/a/a/a/a/a;->a:La/a/a/a/a/a/e/a;

    invoke-virtual {v0, p1}, La/a/a/a/a/a/e/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/waft/gcs/network/api/Response;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, v0, Lcom/alibaba/genie/waft/gcs/network/api/Response;->c:Ljava/util/Map;

    const/4 v2, 0x1

    .line 6
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cache"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get() called with: url = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string p1, "hit"

    goto :goto_0

    :cond_1
    const-string p1, "not hit"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cacheResponse "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/alibaba/genie/waft/gcs/network/api/Response;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/genie/waft/gcs/network/api/Response;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, La/a/a/a/a/a/a;->a:La/a/a/a/a/a/e/a;

    invoke-virtual {v0, p1, p2}, La/a/a/a/a/a/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "put() called with: url = ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], response"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
