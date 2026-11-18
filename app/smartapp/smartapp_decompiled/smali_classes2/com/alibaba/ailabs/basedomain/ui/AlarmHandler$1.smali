.class Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$1;
.super Landroid/os/Handler;
.source "AlarmHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getBgHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    invoke-direct {p0, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method
