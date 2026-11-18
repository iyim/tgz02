.class public Lb/e/a$a;
.super Lb/e/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/e/a;->b()Lb/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/e/g<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lb/e/a;


# direct methods
.method public constructor <init>(Lb/e/a;)V
    .locals 0

    iput-object p1, p0, Lb/e/a$a;->d:Lb/e/a;

    invoke-direct {p0}, Lb/e/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lb/e/a$a;->d:Lb/e/a;

    invoke-virtual {v0, p1}, Lb/e/h;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public a(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb/e/a$a;->d:Lb/e/a;

    iget-object v0, v0, Lb/e/h;->c:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lb/e/a$a;->d:Lb/e/a;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 1
    iget-object v0, v0, Lb/e/h;->c:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lb/e/a$a;->d:Lb/e/a;

    invoke-virtual {v0}, Lb/e/h;->clear()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lb/e/a$a;->d:Lb/e/a;

    invoke-virtual {v0, p1}, Lb/e/h;->d(I)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/e/a$a;->d:Lb/e/a;

    invoke-virtual {v0, p1, p2}, Lb/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lb/e/a$a;->d:Lb/e/a;

    invoke-virtual {v0, p1}, Lb/e/h;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/e/a$a;->d:Lb/e/a;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lb/e/a$a;->d:Lb/e/a;

    iget v0, v0, Lb/e/h;->d:I

    return v0
.end method
