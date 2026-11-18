.class public Lcom/taobao/tao/log/ConcurrentLRUCache$PageIterator;
.super Ljava/lang/Object;
.source "ConcurrentLRUCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/log/ConcurrentLRUCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private left:I

.field private final mCopyElements:[Ljava/lang/Object;

.field private final mCopyMaxSize:I

.field private final next:I


# direct methods
.method private constructor <init>([Ljava/lang/Object;III)V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-array v0, p3, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/taobao/tao/log/ConcurrentLRUCache$PageIterator;->mCopyElements:[Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/taobao/tao/log/ConcurrentLRUCache$PageIterator;->mCopyElements:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iput p2, p0, Lcom/taobao/tao/log/ConcurrentLRUCache$PageIterator;->mCopyMaxSize:I

    .line 109
    iput p3, p0, Lcom/taobao/tao/log/ConcurrentLRUCache$PageIterator;->left:I

    .line 110
    iput p4, p0, Lcom/taobao/tao/log/ConcurrentLRUCache$PageIterator;->next:I

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/Object;IIILcom/taobao/tao/log/ConcurrentLRUCache$1;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/tao/log/ConcurrentLRUCache$PageIterator;-><init>([Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 115
    iget v0, p0, Lcom/taobao/tao/log/ConcurrentLRUCache$PageIterator;->left:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/taobao/tao/log/ConcurrentLRUCache$PageIterator;->mCopyElements:[Ljava/lang/Object;

    iget v1, p0, Lcom/taobao/tao/log/ConcurrentLRUCache$PageIterator;->next:I

    iget v2, p0, Lcom/taobao/tao/log/ConcurrentLRUCache$PageIterator;->left:I

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/taobao/tao/log/ConcurrentLRUCache$PageIterator;->mCopyMaxSize:I

    add-int/2addr v1, v3

    rem-int/2addr v1, v3

    aget-object v0, v0, v1

    add-int/lit8 v2, v2, -0x1

    .line 121
    iput v2, p0, Lcom/taobao/tao/log/ConcurrentLRUCache$PageIterator;->left:I

    return-object v0
.end method
