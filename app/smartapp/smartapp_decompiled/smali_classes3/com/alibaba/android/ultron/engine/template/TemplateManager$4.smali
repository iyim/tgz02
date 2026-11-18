.class Lcom/alibaba/android/ultron/engine/template/TemplateManager$4;
.super Ljava/lang/Object;
.source "TemplateManager.java"

# interfaces
.implements Lcom/alibaba/android/ultron/inter/IStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/engine/template/TemplateManager;->renderUserData(Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/engine/template/TemplateManager;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/engine/template/TemplateManager;Ljava/lang/String;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager$4;->this$0:Lcom/alibaba/android/ultron/engine/template/TemplateManager;

    iput-object p2, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager$4;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusReceive(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p1, "fileName"

    .line 471
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "content"

    .line 472
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 473
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager$4;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-static {p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 475
    invoke-static {p2}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->access$502(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
