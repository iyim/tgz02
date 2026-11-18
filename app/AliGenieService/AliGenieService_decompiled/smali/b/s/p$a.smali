.class public Lb/s/p$a;
.super Lb/s/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/s/p;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/s/j;


# direct methods
.method public constructor <init>(Lb/s/p;Lb/s/j;)V
    .locals 0

    iput-object p2, p0, Lb/s/p$a;->a:Lb/s/j;

    invoke-direct {p0}, Lb/s/m;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb/s/j;)V
    .locals 1

    iget-object v0, p0, Lb/s/p$a;->a:Lb/s/j;

    invoke-virtual {v0}, Lb/s/j;->e()V

    invoke-virtual {p1, p0}, Lb/s/j;->b(Lb/s/j$d;)Lb/s/j;

    return-void
.end method
