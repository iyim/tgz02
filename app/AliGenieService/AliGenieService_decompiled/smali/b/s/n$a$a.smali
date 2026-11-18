.class public Lb/s/n$a$a;
.super Lb/s/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/s/n$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/e/a;

.field public final synthetic b:Lb/s/n$a;


# direct methods
.method public constructor <init>(Lb/s/n$a;Lb/e/a;)V
    .locals 0

    iput-object p1, p0, Lb/s/n$a$a;->b:Lb/s/n$a;

    iput-object p2, p0, Lb/s/n$a$a;->a:Lb/e/a;

    invoke-direct {p0}, Lb/s/m;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb/s/j;)V
    .locals 2

    iget-object v0, p0, Lb/s/n$a$a;->a:Lb/e/a;

    iget-object v1, p0, Lb/s/n$a$a;->b:Lb/s/n$a;

    iget-object v1, v1, Lb/s/n$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lb/e/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lb/s/j;->b(Lb/s/j$d;)Lb/s/j;

    return-void
.end method
