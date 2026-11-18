.class final Lcom/alibaba/ailabs/genie/utils/DataCenterUtils$1;
.super Ljava/lang/Object;
.source "DataCenterUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sendInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$arg1:Ljava/lang/String;

.field final synthetic val$arg2:Ljava/lang/String;

.field final synthetic val$pageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils$1;->val$arg1:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils$1;->val$arg2:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils$1;->val$pageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 372
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 373
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils$1;->val$arg1:Ljava/lang/String;

    const-string v2, "_field_arg1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils$1;->val$arg2:Ljava/lang/String;

    const-string v2, "_field_arg2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils$1;->val$arg1:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils$1;->val$pageName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
