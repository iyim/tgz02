.class public final Landroidx/fragment/app/BackStackState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/fragment/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:[I

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:[I

.field public final e:[I

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:I

.field public final j:Ljava/lang/CharSequence;

.field public final k:I

.field public final l:Ljava/lang/CharSequence;

.field public final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/fragment/app/BackStackState$a;

    invoke-direct {v0}, Landroidx/fragment/app/BackStackState$a;-><init>()V

    sput-object v0, Landroidx/fragment/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->b:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->d:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->e:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackState;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackState;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackState;->i:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->j:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackState;->k:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->l:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/fragment/app/BackStackState;->o:Z

    return-void
.end method

.method public constructor <init>(Lb/k/d/a;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/fragment/app/BackStackState;->b:[I

    iget-boolean v1, p1, Lb/k/d/v;->g:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/fragment/app/BackStackState;->c:Ljava/util/ArrayList;

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/fragment/app/BackStackState;->d:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/fragment/app/BackStackState;->e:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p1, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/k/d/v$a;

    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->b:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Lb/k/d/v$a;->a:I

    aput v6, v4, v2

    iget-object v2, p0, Landroidx/fragment/app/BackStackState;->c:Ljava/util/ArrayList;

    iget-object v4, v3, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroidx/fragment/app/BackStackState;->b:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, Lb/k/d/v$a;->c:I

    aput v6, v2, v5

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Lb/k/d/v$a;->d:I

    aput v6, v2, v4

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, Lb/k/d/v$a;->e:I

    aput v6, v2, v5

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Lb/k/d/v$a;->f:I

    aput v6, v2, v4

    iget-object v2, p0, Landroidx/fragment/app/BackStackState;->d:[I

    iget-object v4, v3, Lb/k/d/v$a;->g:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v4, v2, v1

    iget-object v2, p0, Landroidx/fragment/app/BackStackState;->e:[I

    iget-object v3, v3, Lb/k/d/v$a;->h:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    :cond_1
    iget v0, p1, Lb/k/d/v;->f:I

    iput v0, p0, Landroidx/fragment/app/BackStackState;->f:I

    iget-object v0, p1, Lb/k/d/v;->i:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->g:Ljava/lang/String;

    iget v0, p1, Lb/k/d/a;->t:I

    iput v0, p0, Landroidx/fragment/app/BackStackState;->h:I

    iget v0, p1, Lb/k/d/v;->j:I

    iput v0, p0, Landroidx/fragment/app/BackStackState;->i:I

    iget-object v0, p1, Lb/k/d/v;->k:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->j:Ljava/lang/CharSequence;

    iget v0, p1, Lb/k/d/v;->l:I

    iput v0, p0, Landroidx/fragment/app/BackStackState;->k:I

    iget-object v0, p1, Lb/k/d/v;->m:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->l:Ljava/lang/CharSequence;

    iget-object v0, p1, Lb/k/d/v;->n:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->m:Ljava/util/ArrayList;

    iget-object v0, p1, Lb/k/d/v;->o:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->n:Ljava/util/ArrayList;

    iget-boolean p1, p1, Lb/k/d/v;->p:Z

    iput-boolean p1, p0, Landroidx/fragment/app/BackStackState;->o:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lb/k/d/p;)Lb/k/d/a;
    .locals 6

    new-instance v0, Lb/k/d/a;

    invoke-direct {v0, p1}, Lb/k/d/a;-><init>(Lb/k/d/p;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/BackStackState;->b:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    new-instance v3, Lb/k/d/v$a;

    invoke-direct {v3}, Lb/k/d/v$a;-><init>()V

    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->b:[I

    add-int/lit8 v5, v1, 0x1

    aget v1, v4, v1

    iput v1, v3, Lb/k/d/v$a;->a:I

    const/4 v1, 0x2

    invoke-static {v1}, Lb/k/d/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instantiate "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " op #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " base fragment #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->b:[I

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "FragmentManager"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1
    iget-object v4, p1, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v4, v1}, Lb/k/d/u;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_1
    iput-object v1, v3, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->d:[I

    aget v4, v4, v2

    aget-object v1, v1, v4

    iput-object v1, v3, Lb/k/d/v$a;->g:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->e:[I

    aget v4, v4, v2

    aget-object v1, v1, v4

    iput-object v1, v3, Lb/k/d/v$a;->h:Landroidx/lifecycle/Lifecycle$State;

    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->b:[I

    add-int/lit8 v4, v5, 0x1

    aget v5, v1, v5

    iput v5, v3, Lb/k/d/v$a;->c:I

    add-int/lit8 v5, v4, 0x1

    aget v4, v1, v4

    iput v4, v3, Lb/k/d/v$a;->d:I

    add-int/lit8 v4, v5, 0x1

    aget v5, v1, v5

    iput v5, v3, Lb/k/d/v$a;->e:I

    add-int/lit8 v5, v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Lb/k/d/v$a;->f:I

    iget v1, v3, Lb/k/d/v$a;->c:I

    iput v1, v0, Lb/k/d/v;->b:I

    iget v1, v3, Lb/k/d/v$a;->d:I

    iput v1, v0, Lb/k/d/v;->c:I

    iget v1, v3, Lb/k/d/v$a;->e:I

    iput v1, v0, Lb/k/d/v;->d:I

    iget v1, v3, Lb/k/d/v$a;->f:I

    iput v1, v0, Lb/k/d/v;->e:I

    invoke-virtual {v0, v3}, Lb/k/d/v;->a(Lb/k/d/v$a;)V

    add-int/lit8 v2, v2, 0x1

    move v1, v5

    goto/16 :goto_0

    :cond_2
    iget p1, p0, Landroidx/fragment/app/BackStackState;->f:I

    iput p1, v0, Lb/k/d/v;->f:I

    iget-object p1, p0, Landroidx/fragment/app/BackStackState;->g:Ljava/lang/String;

    iput-object p1, v0, Lb/k/d/v;->i:Ljava/lang/String;

    iget p1, p0, Landroidx/fragment/app/BackStackState;->h:I

    iput p1, v0, Lb/k/d/a;->t:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lb/k/d/v;->g:Z

    iget v1, p0, Landroidx/fragment/app/BackStackState;->i:I

    iput v1, v0, Lb/k/d/v;->j:I

    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->j:Ljava/lang/CharSequence;

    iput-object v1, v0, Lb/k/d/v;->k:Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/fragment/app/BackStackState;->k:I

    iput v1, v0, Lb/k/d/v;->l:I

    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->l:Ljava/lang/CharSequence;

    iput-object v1, v0, Lb/k/d/v;->m:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->m:Ljava/util/ArrayList;

    iput-object v1, v0, Lb/k/d/v;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->n:Ljava/util/ArrayList;

    iput-object v1, v0, Lb/k/d/v;->o:Ljava/util/ArrayList;

    iget-boolean v1, p0, Landroidx/fragment/app/BackStackState;->o:Z

    iput-boolean v1, v0, Lb/k/d/v;->p:Z

    invoke-virtual {v0, p1}, Lb/k/d/a;->a(I)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->b:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->d:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->e:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Landroidx/fragment/app/BackStackState;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroidx/fragment/app/BackStackState;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/fragment/app/BackStackState;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->j:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget p2, p0, Landroidx/fragment/app/BackStackState;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->l:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p2, p0, Landroidx/fragment/app/BackStackState;->o:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
