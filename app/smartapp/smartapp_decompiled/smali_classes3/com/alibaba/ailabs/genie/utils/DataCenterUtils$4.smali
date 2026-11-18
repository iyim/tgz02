.class final Lcom/alibaba/ailabs/genie/utils/DataCenterUtils$4;
.super Ljava/lang/Object;
.source "DataCenterUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sendInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$arg1:Ljava/lang/String;

.field final synthetic val$args:Ljava/util/Map;

.field final synthetic val$pageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils$4;->val$args:Ljava/util/Map;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils$4;->val$arg1:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils$4;->val$pageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils$4;->val$args:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 412
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils$4;->val$arg1:Ljava/lang/String;

    const-string v2, "_field_arg1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils$4;->val$arg1:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils$4;->val$pageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils$4;->val$args:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
