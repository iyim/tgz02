.class public Lcom/aligenie/ags/analytics/jni/KeyEventReader$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aligenie/ags/analytics/jni/KeyEventReader;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/aligenie/ags/analytics/jni/KeyEventReader;


# direct methods
.method public constructor <init>(Lcom/aligenie/ags/analytics/jni/KeyEventReader;)V
    .locals 0

    iput-object p1, p0, Lcom/aligenie/ags/analytics/jni/KeyEventReader$1;->this$0:Lcom/aligenie/ags/analytics/jni/KeyEventReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-class v0, Lcom/aligenie/ags/analytics/jni/KeyEventReader;

    iget-object v1, p0, Lcom/aligenie/ags/analytics/jni/KeyEventReader$1;->this$0:Lcom/aligenie/ags/analytics/jni/KeyEventReader;

    invoke-static {v1}, Lcom/aligenie/ags/analytics/jni/KeyEventReader;->access$000(Lcom/aligenie/ags/analytics/jni/KeyEventReader;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/aligenie/ags/analytics/jni/KeyEventReader$1;->this$0:Lcom/aligenie/ags/analytics/jni/KeyEventReader;

    invoke-static {v1}, Lcom/aligenie/ags/analytics/jni/KeyEventReader;->access$100(Lcom/aligenie/ags/analytics/jni/KeyEventReader;)V

    :cond_0
    const-string v1, "start to get key events"

    invoke-static {v1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_1
    iget-object v1, p0, Lcom/aligenie/ags/analytics/jni/KeyEventReader$1;->this$0:Lcom/aligenie/ags/analytics/jni/KeyEventReader;

    invoke-static {v1}, Lcom/aligenie/ags/analytics/jni/KeyEventReader;->access$200(Lcom/aligenie/ags/analytics/jni/KeyEventReader;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " key events"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/aligenie/ags/analytics/jni/KeyEventReader$1;->this$0:Lcom/aligenie/ags/analytics/jni/KeyEventReader;

    invoke-static {v3}, Lcom/aligenie/ags/analytics/jni/KeyEventReader;->access$300(Lcom/aligenie/ags/analytics/jni/KeyEventReader;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/aligenie/ags/analytics/jni/KeyEventReader$1;->this$0:Lcom/aligenie/ags/analytics/jni/KeyEventReader;

    invoke-static {v3}, Lcom/aligenie/ags/analytics/jni/KeyEventReader;->access$300(Lcom/aligenie/ags/analytics/jni/KeyEventReader;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aligenie/ags/analytics/jni/KeyEventReader$KeyEventListener;

    invoke-interface {v3, v1}, Lcom/aligenie/ags/analytics/jni/KeyEventReader$KeyEventListener;->onKeyEventCount(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
