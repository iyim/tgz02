.class public Lcom/aligenie/ags/analytics/service/ICService$d;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aligenie/ags/analytics/service/ICService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/aligenie/ags/analytics/service/ICService;


# direct methods
.method public constructor <init>(Lcom/aligenie/ags/analytics/service/ICService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/aligenie/ags/analytics/service/ICService$d;->a:Lcom/aligenie/ags/analytics/service/ICService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/aligenie/ags/analytics/service/ICService$d;->a:Lcom/aligenie/ags/analytics/service/ICService;

    .line 1
    iget-object p1, p1, Lcom/aligenie/ags/analytics/service/ICService;->e:Landroid/os/Handler;

    .line 2
    new-instance v0, Lcom/aligenie/ags/analytics/service/ICService$d$a;

    invoke-direct {v0, p0}, Lcom/aligenie/ags/analytics/service/ICService$d$a;-><init>(Lcom/aligenie/ags/analytics/service/ICService$d;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
