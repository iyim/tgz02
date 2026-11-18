.class Lcom/alibaba/android/ultron/engine/template/TemplateManager$3;
.super Ljava/lang/Object;
.source "TemplateManager.java"

# interfaces
.implements Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/engine/template/TemplateManager;->preLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/engine/template/TemplateManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/engine/template/TemplateManager;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager$3;->this$0:Lcom/alibaba/android/ultron/engine/template/TemplateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObjectGetCallback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 366
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preload onObjectGetCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "TemplateManager"

    invoke-static {v0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;

    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;

    if-eqz p1, :cond_1

    .line 370
    iget-object p2, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager$3;->this$0:Lcom/alibaba/android/ultron/engine/template/TemplateManager;

    invoke-static {p2, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->access$300(Lcom/alibaba/android/ultron/engine/template/TemplateManager;Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 371
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager$3;->this$0:Lcom/alibaba/android/ultron/engine/template/TemplateManager;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->saveMemCache(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;Lcom/alibaba/fastjson/JSONObject;)V

    const-string p1, "preload# saveMemCache"

    .line 375
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method
