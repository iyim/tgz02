.class public Lcom/aligenie/ags/access/AccessService$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aligenie/ags/access/AccessService;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/h/k/a0/b;


# direct methods
.method public constructor <init>(Lcom/aligenie/ags/access/AccessService;Lb/h/k/a0/b;)V
    .locals 0

    iput-object p2, p0, Lcom/aligenie/ags/access/AccessService$d;->b:Lb/h/k/a0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1c2

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService$d;->b:Lb/h/k/a0/b;

    const/16 v1, 0x10

    .line 1
    iget-object v0, v0, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    return-void
.end method
