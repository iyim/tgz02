.class public abstract Lb/o/p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/o/p$o;,
        Lb/o/p$l;,
        Lb/o/p$p;,
        Lb/o/p$m;,
        Lb/o/p$n;
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


# static fields
.field public static final b:Lb/o/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/o/p<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lb/o/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/o/p<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lb/o/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/o/p<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final e:Lb/o/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/o/p<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lb/o/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/o/p<",
            "[J>;"
        }
    .end annotation
.end field

.field public static final g:Lb/o/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/o/p<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lb/o/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/o/p<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final i:Lb/o/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/o/p<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lb/o/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/o/p<",
            "[Z>;"
        }
    .end annotation
.end field

.field public static final k:Lb/o/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/o/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lb/o/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/o/p<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb/o/p$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/o/p$c;-><init>(Z)V

    sput-object v0, Lb/o/p;->b:Lb/o/p;

    new-instance v0, Lb/o/p$d;

    invoke-direct {v0, v1}, Lb/o/p$d;-><init>(Z)V

    sput-object v0, Lb/o/p;->c:Lb/o/p;

    new-instance v0, Lb/o/p$e;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lb/o/p$e;-><init>(Z)V

    sput-object v0, Lb/o/p;->d:Lb/o/p;

    new-instance v0, Lb/o/p$f;

    invoke-direct {v0, v1}, Lb/o/p$f;-><init>(Z)V

    sput-object v0, Lb/o/p;->e:Lb/o/p;

    new-instance v0, Lb/o/p$g;

    invoke-direct {v0, v2}, Lb/o/p$g;-><init>(Z)V

    sput-object v0, Lb/o/p;->f:Lb/o/p;

    new-instance v0, Lb/o/p$h;

    invoke-direct {v0, v1}, Lb/o/p$h;-><init>(Z)V

    sput-object v0, Lb/o/p;->g:Lb/o/p;

    new-instance v0, Lb/o/p$i;

    invoke-direct {v0, v2}, Lb/o/p$i;-><init>(Z)V

    sput-object v0, Lb/o/p;->h:Lb/o/p;

    new-instance v0, Lb/o/p$j;

    invoke-direct {v0, v1}, Lb/o/p$j;-><init>(Z)V

    sput-object v0, Lb/o/p;->i:Lb/o/p;

    new-instance v0, Lb/o/p$k;

    invoke-direct {v0, v2}, Lb/o/p$k;-><init>(Z)V

    sput-object v0, Lb/o/p;->j:Lb/o/p;

    new-instance v0, Lb/o/p$a;

    invoke-direct {v0, v2}, Lb/o/p$a;-><init>(Z)V

    sput-object v0, Lb/o/p;->k:Lb/o/p;

    new-instance v0, Lb/o/p$b;

    invoke-direct {v0, v2}, Lb/o/p$b;-><init>(Z)V

    sput-object v0, Lb/o/p;->l:Lb/o/p;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lb/o/p;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lb/o/p;
    .locals 2

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object p0, Lb/o/p;->b:Lb/o/p;

    return-object p0

    :cond_0
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    sget-object p0, Lb/o/p;->d:Lb/o/p;

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    sget-object p0, Lb/o/p;->e:Lb/o/p;

    return-object p0

    :cond_2
    instance-of v0, p0, [J

    if-eqz v0, :cond_3

    sget-object p0, Lb/o/p;->f:Lb/o/p;

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    sget-object p0, Lb/o/p;->g:Lb/o/p;

    return-object p0

    :cond_4
    instance-of v0, p0, [F

    if-eqz v0, :cond_5

    sget-object p0, Lb/o/p;->h:Lb/o/p;

    return-object p0

    :cond_5
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    sget-object p0, Lb/o/p;->i:Lb/o/p;

    return-object p0

    :cond_6
    instance-of v0, p0, [Z

    if-eqz v0, :cond_7

    sget-object p0, Lb/o/p;->j:Lb/o/p;

    return-object p0

    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_f

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object p0, Lb/o/p;->l:Lb/o/p;

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lb/o/p$m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/o/p$m;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    const-class v0, Ljava/io/Serializable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lb/o/p$o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/o/p$o;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_b
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_c

    new-instance v0, Lb/o/p$n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/o/p$n;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_c
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_d

    new-instance v0, Lb/o/p$l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/o/p$l;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_d
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_e

    new-instance v0, Lb/o/p$p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/o/p$p;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object of type "

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported for navigation arguments."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_0
    sget-object p0, Lb/o/p;->k:Lb/o/p;

    return-object p0
.end method


# virtual methods
.method public abstract a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lb/o/p;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
