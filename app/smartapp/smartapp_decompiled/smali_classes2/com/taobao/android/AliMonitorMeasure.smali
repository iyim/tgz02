.class public Lcom/taobao/android/AliMonitorMeasure;
.super Ljava/lang/Object;
.source "AliMonitorMeasure.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/taobao/android/AliMonitorMeasure;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AliMonitorMeasure"

.field private static nullList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field protected constantValue:Ljava/lang/Double;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/taobao/android/AliMonitorMeasure;->nullList:Ljava/util/List;

    .line 37
    sget-object v0, Lcom/taobao/android/AliMonitorMeasure;->nullList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Lcom/taobao/android/AliMonitorMeasure$1;

    invoke-direct {v0}, Lcom/taobao/android/AliMonitorMeasure$1;-><init>()V

    sput-object v0, Lcom/taobao/android/AliMonitorMeasure;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/AliMonitorMeasure;->constantValue:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/taobao/android/AliMonitorMeasure;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/taobao/android/AliMonitorMeasure;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/android/AliMonitorMeasure;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/List;)V

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    .line 64
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/taobao/android/AliMonitorMeasure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/android/AliMonitorMeasure;->constantValue:Ljava/lang/Double;

    if-eqz p3, :cond_1

    .line 46
    sget-object v2, Lcom/taobao/android/AliMonitorMeasure;->nullList:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AliMonitorMeasure"

    const-string v3, "bounds entity must not be null"

    .line 48
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 51
    iput-object p3, p0, Lcom/taobao/android/AliMonitorMeasure;->bounds:Ljava/util/List;

    .line 53
    :cond_1
    iput-object p1, p0, Lcom/taobao/android/AliMonitorMeasure;->name:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 54
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/android/AliMonitorMeasure;->constantValue:Ljava/lang/Double;

    return-void
.end method

.method static readFromParcel(Landroid/os/Parcel;)Lcom/taobao/android/AliMonitorMeasure;
    .locals 5

    const/4 v0, 0x0

    .line 171
    :try_start_0
    const-class v1, Lcom/taobao/android/AliMonitorMeasure;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    .line 172
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 177
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v0

    .line 179
    :goto_1
    new-instance v3, Lcom/taobao/android/AliMonitorMeasure;

    invoke-direct {v3, v2, p0, v1}, Lcom/taobao/android/AliMonitorMeasure;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_2

    :catch_0
    move-exception p0

    .line 181
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AliMonitorMeasure"

    const-string v2, "readFromParcel"

    .line 182
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 134
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 137
    :cond_2
    check-cast p1, Lcom/taobao/android/AliMonitorMeasure;

    .line 138
    iget-object v2, p0, Lcom/taobao/android/AliMonitorMeasure;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 139
    iget-object p1, p1, Lcom/taobao/android/AliMonitorMeasure;->name:Ljava/lang/String;

    if-eqz p1, :cond_4

    return v1

    .line 142
    :cond_3
    iget-object p1, p1, Lcom/taobao/android/AliMonitorMeasure;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getBounds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/taobao/android/AliMonitorMeasure;->bounds:Ljava/util/List;

    return-object v0
.end method

.method public getConstantValue()Ljava/lang/Double;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/taobao/android/AliMonitorMeasure;->constantValue:Ljava/lang/Double;

    return-object v0
.end method

.method public getMax()Ljava/lang/Double;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/taobao/android/AliMonitorMeasure;->bounds:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/taobao/android/AliMonitorMeasure;->bounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMin()Ljava/lang/Double;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/taobao/android/AliMonitorMeasure;->bounds:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/taobao/android/AliMonitorMeasure;->bounds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/taobao/android/AliMonitorMeasure;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/taobao/android/AliMonitorMeasure;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public setConstantValue(Ljava/lang/Double;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/taobao/android/AliMonitorMeasure;->constantValue:Ljava/lang/Double;

    return-void
.end method

.method public setRange(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/android/AliMonitorMeasure;->bounds:Ljava/util/List;

    .line 74
    iget-object v0, p0, Lcom/taobao/android/AliMonitorMeasure;->bounds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object p1, p0, Lcom/taobao/android/AliMonitorMeasure;->bounds:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_0
    const-string p1, "AliMonitorMeasure"

    const-string p2, "min or max must not be null"

    .line 70
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public valid(Lcom/taobao/android/AliMonitorMeasureValue;)Z
    .locals 5

    .line 114
    invoke-virtual {p1}, Lcom/taobao/android/AliMonitorMeasureValue;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/taobao/android/AliMonitorMeasure;->getMin()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/taobao/android/AliMonitorMeasure;->getMin()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/AliMonitorMeasure;->getMax()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/taobao/android/AliMonitorMeasure;->getMax()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 157
    :try_start_0
    iget-object p2, p0, Lcom/taobao/android/AliMonitorMeasure;->bounds:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 158
    iget-object p2, p0, Lcom/taobao/android/AliMonitorMeasure;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object p2, p0, Lcom/taobao/android/AliMonitorMeasure;->constantValue:Ljava/lang/Double;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object p2, p0, Lcom/taobao/android/AliMonitorMeasure;->constantValue:Ljava/lang/Double;

    if-eqz p2, :cond_1

    .line 161
    iget-object p2, p0, Lcom/taobao/android/AliMonitorMeasure;->constantValue:Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "AliMonitorMeasure"

    const-string v0, "writeToParcel"

    .line 164
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method
