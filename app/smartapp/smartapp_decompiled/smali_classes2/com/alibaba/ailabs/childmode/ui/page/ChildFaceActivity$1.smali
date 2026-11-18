.class Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$1;
.super Ljava/lang/Object;
.source "ChildFaceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 53
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
