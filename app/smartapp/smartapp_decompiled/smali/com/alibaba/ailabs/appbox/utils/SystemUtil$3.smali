.class final Lcom/alibaba/ailabs/appbox/utils/SystemUtil$3;
.super Ljava/lang/Object;
.source "SystemUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->openBySchema(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$page:Ljava/lang/String;

.field final synthetic val$pro:Ljava/util/HashMap;

.field final synthetic val$schema:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$3;->val$schema:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$3;->val$pro:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$3;->val$page:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rtry to open -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$3;->val$schema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxSystemUtil"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$3;->val$pro:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$3;->val$schema:Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$3;->val$page:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$3;->val$pro:Ljava/util/HashMap;

    const-string v2, "openBySchema"

    invoke-static {v2, v0, v1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
