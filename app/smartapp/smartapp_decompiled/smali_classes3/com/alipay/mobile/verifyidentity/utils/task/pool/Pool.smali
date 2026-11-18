.class public abstract Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool$Poolable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field protected final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;->c:Ljava/util/ArrayDeque;

    .line 38
    iput p2, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;->a:I

    if-ge v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 48
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;->b:I

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;->b:I

    .line 50
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool$Poolable;

    if-eqz v0, :cond_1

    .line 51
    check-cast p1, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool$Poolable;

    invoke-interface {p1}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool$Poolable;->a()V

    :cond_1
    return-void

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
