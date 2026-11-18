.class Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections$ActivityRef;
.super Ljava/lang/ref/WeakReference;
.source "VerifyActivityCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;Landroid/app/Activity;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections$ActivityRef;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;

    .line 79
    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 80
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;Landroid/app/Activity;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections$ActivityRef;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;

    .line 83
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections$ActivityRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
