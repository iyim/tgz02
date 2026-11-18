.class public Lb/k/d/i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/m/h;


# instance fields
.field public b:Lb/m/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/k/d/i0;->b:Lb/m/i;

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/k/d/i0;->b:Lb/m/i;

    if-nez v0, :cond_0

    new-instance v0, Lb/m/i;

    invoke-direct {v0, p0}, Lb/m/i;-><init>(Lb/m/h;)V

    iput-object v0, p0, Lb/k/d/i0;->b:Lb/m/i;

    .line 2
    :cond_0
    iget-object v0, p0, Lb/k/d/i0;->b:Lb/m/i;

    return-object v0
.end method
