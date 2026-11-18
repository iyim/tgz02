.class final Lcom/android/alibaba/ip/server/Restarter$1;
.super Ljava/lang/Object;
.source "Restarter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alibaba/ip/server/Restarter;->restartActivityOnUiThread(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/android/alibaba/ip/server/Restarter$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "InstantPatch"

    const-string v1, "Resources updated: notify activities"

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/android/alibaba/ip/server/Restarter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/alibaba/ip/server/Restarter;->access$000(Landroid/app/Activity;)V

    return-void
.end method
