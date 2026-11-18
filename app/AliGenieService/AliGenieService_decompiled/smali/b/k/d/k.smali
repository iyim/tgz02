.class public Lb/k/d/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lb/k/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/k/d/m<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/k/d/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/k/d/m<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/k/d/k;->a:Lb/k/d/m;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lb/k/d/k;->a:Lb/k/d/m;

    iget-object v0, v0, Lb/k/d/m;->e:Lb/k/d/p;

    invoke-virtual {v0}, Lb/k/d/p;->m()V

    return-void
.end method
