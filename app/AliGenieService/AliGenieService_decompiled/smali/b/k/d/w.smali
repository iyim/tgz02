.class public final Lb/k/d/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lb/k/d/c0$a;

.field public final synthetic c:Landroidx/fragment/app/Fragment;

.field public final synthetic d:Lb/h/g/a;


# direct methods
.method public constructor <init>(Lb/k/d/c0$a;Landroidx/fragment/app/Fragment;Lb/h/g/a;)V
    .locals 0

    iput-object p1, p0, Lb/k/d/w;->b:Lb/k/d/c0$a;

    iput-object p2, p0, Lb/k/d/w;->c:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lb/k/d/w;->d:Lb/h/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lb/k/d/w;->b:Lb/k/d/c0$a;

    iget-object v1, p0, Lb/k/d/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lb/k/d/w;->d:Lb/h/g/a;

    check-cast v0, Lb/k/d/p$b;

    invoke-virtual {v0, v1, v2}, Lb/k/d/p$b;->a(Landroidx/fragment/app/Fragment;Lb/h/g/a;)V

    return-void
.end method
