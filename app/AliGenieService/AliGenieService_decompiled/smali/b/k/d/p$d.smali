.class public Lb/k/d/p$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/d/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/k/d/p;


# direct methods
.method public constructor <init>(Lb/k/d/p;)V
    .locals 0

    iput-object p1, p0, Lb/k/d/p$d;->b:Lb/k/d/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/k/d/p$d;->b:Lb/k/d/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/k/d/p;->d(Z)Z

    return-void
.end method
