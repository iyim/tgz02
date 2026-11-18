.class Landroid/databinding/ViewDataBinding$7;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/databinding/ViewDataBinding;


# direct methods
.method constructor <init>(Landroid/databinding/ViewDataBinding;)V
    .locals 0

    .line 177
    iput-object p1, p0, Landroid/databinding/ViewDataBinding$7;->this$0:Landroid/databinding/ViewDataBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$7;->this$0:Landroid/databinding/ViewDataBinding;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/databinding/ViewDataBinding;->access$202(Landroid/databinding/ViewDataBinding;Z)Z

    .line 182
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-static {}, Landroid/databinding/ViewDataBinding;->access$300()V

    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$7;->this$0:Landroid/databinding/ViewDataBinding;

    invoke-static {v0}, Landroid/databinding/ViewDataBinding;->access$400(Landroid/databinding/ViewDataBinding;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$7;->this$0:Landroid/databinding/ViewDataBinding;

    invoke-static {v0}, Landroid/databinding/ViewDataBinding;->access$400(Landroid/databinding/ViewDataBinding;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Landroid/databinding/ViewDataBinding;->access$500()Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 191
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$7;->this$0:Landroid/databinding/ViewDataBinding;

    invoke-static {v0}, Landroid/databinding/ViewDataBinding;->access$400(Landroid/databinding/ViewDataBinding;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Landroid/databinding/ViewDataBinding;->access$500()Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$7;->this$0:Landroid/databinding/ViewDataBinding;

    invoke-virtual {v0}, Landroid/databinding/ViewDataBinding;->executePendingBindings()V

    return-void

    :catchall_0
    move-exception v0

    .line 182
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
