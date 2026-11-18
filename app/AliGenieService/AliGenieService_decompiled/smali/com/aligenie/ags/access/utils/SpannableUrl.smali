.class public abstract Lcom/aligenie/ags/access/utils/SpannableUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/aligenie/ags/access/utils/SpannableUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aligenie/ags/access/utils/SpannableUrl$a;

    invoke-direct {v0}, Lcom/aligenie/ags/access/utils/SpannableUrl$a;-><init>()V

    sput-object v0, Lcom/aligenie/ags/access/utils/SpannableUrl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/aligenie/ags/access/utils/SpannableUrl;
    .locals 1

    new-instance v0, Lcom/aligenie/ags/access/utils/AutoValue_SpannableUrl;

    invoke-direct {v0, p0, p1}, Lcom/aligenie/ags/access/utils/AutoValue_SpannableUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/aligenie/ags/access/utils/SpannableUrl;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aligenie/ags/access/utils/SpannableUrl;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
