.class Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "LocalAidlServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/service/LocalAidlServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList<",
        "Landroid/content/ServiceConnection;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final app:Landroid/app/Application;

.field final binder:Landroid/os/IBinder;

.field final intent:Landroid/content/Intent;

.field final service:Landroid/app/Service;


# direct methods
.method constructor <init>(Landroid/app/Application;Landroid/content/Intent;Landroid/os/IBinder;Landroid/app/Service;)V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->app:Landroid/app/Application;

    .line 240
    iput-object p2, p0, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->intent:Landroid/content/Intent;

    .line 241
    iput-object p3, p0, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->binder:Landroid/os/IBinder;

    .line 242
    iput-object p4, p0, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->service:Landroid/app/Service;

    return-void
.end method
