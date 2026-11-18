.class public Lcom/taobao/android/AliMonitorDimensionSet;
.super Ljava/lang/Object;
.source "AliMonitorDimensionSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/taobao/android/AliMonitorDimensionSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final INIT_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DimensionSet"


# instance fields
.field private dimensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/AliMonitorDimension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 184
    new-instance v0, Lcom/taobao/android/AliMonitorDimensionSet$1;

    invoke-direct {v0}, Lcom/taobao/android/AliMonitorDimensionSet$1;-><init>()V

    sput-object v0, Lcom/taobao/android/AliMonitorDimensionSet;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/android/AliMonitorDimensionSet;->dimensions:Ljava/util/List;

    return-void
.end method

.method public static create()Lcom/taobao/android/AliMonitorDimensionSet;
    .locals 1

    .line 25
    new-instance v0, Lcom/taobao/android/AliMonitorDimensionSet;

    invoke-direct {v0}, Lcom/taobao/android/AliMonitorDimensionSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/taobao/android/AliMonitorDimensionSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taobao/android/AliMonitorDimensionSet;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/taobao/android/AliMonitorDimensionSet;

    invoke-direct {v0}, Lcom/taobao/android/AliMonitorDimensionSet;-><init>()V

    if-eqz p0, :cond_0

    .line 31
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 32
    new-instance v2, Lcom/taobao/android/AliMonitorDimension;

    invoke-direct {v2, v1}, Lcom/taobao/android/AliMonitorDimension;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/taobao/android/AliMonitorDimensionSet;->addDimension(Lcom/taobao/android/AliMonitorDimension;)Lcom/taobao/android/AliMonitorDimensionSet;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static create([Ljava/lang/String;)Lcom/taobao/android/AliMonitorDimensionSet;
    .locals 5

    .line 42
    new-instance v0, Lcom/taobao/android/AliMonitorDimensionSet;

    invoke-direct {v0}, Lcom/taobao/android/AliMonitorDimensionSet;-><init>()V

    if-eqz p0, :cond_0

    .line 44
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 45
    new-instance v4, Lcom/taobao/android/AliMonitorDimension;

    invoke-direct {v4, v3}, Lcom/taobao/android/AliMonitorDimension;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/taobao/android/AliMonitorDimensionSet;->addDimension(Lcom/taobao/android/AliMonitorDimension;)Lcom/taobao/android/AliMonitorDimensionSet;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static readFromParcel(Landroid/os/Parcel;)Lcom/taobao/android/AliMonitorDimensionSet;
    .locals 5

    const-string v0, "DimensionSet"

    .line 163
    invoke-static {}, Lcom/taobao/android/AliMonitorDimensionSet;->create()Lcom/taobao/android/AliMonitorDimensionSet;

    move-result-object v1

    .line 165
    :try_start_0
    const-class v2, Lcom/taobao/android/AliMonitorDimensionSet;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 167
    iget-object v2, v1, Lcom/taobao/android/AliMonitorDimensionSet;->dimensions:Ljava/util/List;

    if-nez v2, :cond_0

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/taobao/android/AliMonitorDimensionSet;->dimensions:Ljava/util/List;

    :cond_0
    const/4 v2, 0x0

    .line 170
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 171
    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    aget-object v3, p0, v2

    instance-of v3, v3, Lcom/taobao/android/AliMonitorDimension;

    if-eqz v3, :cond_1

    .line 172
    iget-object v3, v1, Lcom/taobao/android/AliMonitorDimensionSet;->dimensions:Ljava/util/List;

    aget-object v4, p0, v2

    check-cast v4, Lcom/taobao/android/AliMonitorDimension;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parcelables[i]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "[readFromParcel]"

    .line 179
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method


# virtual methods
.method public addDimension(Lcom/taobao/android/AliMonitorDimension;)Lcom/taobao/android/AliMonitorDimensionSet;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/taobao/android/AliMonitorDimensionSet;->dimensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/AliMonitorDimensionSet;->dimensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addDimension(Ljava/lang/String;)Lcom/taobao/android/AliMonitorDimensionSet;
    .locals 1

    .line 90
    new-instance v0, Lcom/taobao/android/AliMonitorDimension;

    invoke-direct {v0, p1}, Lcom/taobao/android/AliMonitorDimension;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/taobao/android/AliMonitorDimensionSet;->addDimension(Lcom/taobao/android/AliMonitorDimension;)Lcom/taobao/android/AliMonitorDimensionSet;

    move-result-object p1

    return-object p1
.end method

.method public addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/AliMonitorDimensionSet;
    .locals 1

    .line 101
    new-instance v0, Lcom/taobao/android/AliMonitorDimension;

    invoke-direct {v0, p1, p2}, Lcom/taobao/android/AliMonitorDimension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/taobao/android/AliMonitorDimensionSet;->addDimension(Lcom/taobao/android/AliMonitorDimension;)Lcom/taobao/android/AliMonitorDimensionSet;

    move-result-object p1

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDimension(Ljava/lang/String;)Lcom/taobao/android/AliMonitorDimension;
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/taobao/android/AliMonitorDimensionSet;->dimensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/AliMonitorDimension;

    .line 112
    invoke-virtual {v1}, Lcom/taobao/android/AliMonitorDimension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDimensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/AliMonitorDimension;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/taobao/android/AliMonitorDimensionSet;->dimensions:Ljava/util/List;

    return-object v0
.end method

.method public setConstantValue(Lcom/taobao/android/AliMonitorDimensionValueSet;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/taobao/android/AliMonitorDimensionSet;->dimensions:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 124
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/AliMonitorDimension;

    .line 126
    invoke-virtual {v1}, Lcom/taobao/android/AliMonitorDimension;->getConstantValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/taobao/android/AliMonitorDimension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/taobao/android/AliMonitorDimensionValueSet;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 127
    invoke-virtual {v1}, Lcom/taobao/android/AliMonitorDimension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/taobao/android/AliMonitorDimension;->getConstantValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/taobao/android/AliMonitorDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/AliMonitorDimensionValueSet;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public valid(Lcom/taobao/android/AliMonitorDimensionValueSet;)Z
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/taobao/android/AliMonitorDimensionSet;->dimensions:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/AliMonitorDimension;

    .line 59
    invoke-virtual {v2}, Lcom/taobao/android/AliMonitorDimension;->getName()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {p1, v2}, Lcom/taobao/android/AliMonitorDimensionValueSet;->containValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/taobao/android/AliMonitorDimensionSet;->dimensions:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 146
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    array-length v1, v0

    new-array v1, v1, [Lcom/taobao/android/AliMonitorDimension;

    const/4 v2, 0x0

    .line 150
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 151
    aget-object v3, v0, v2

    check-cast v3, Lcom/taobao/android/AliMonitorDimension;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
