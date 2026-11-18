.class public Lorg/jdom/input/BuilderErrorHandler;
.super Ljava/lang/Object;
.source "BuilderErrorHandler.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: BuilderErrorHandler.java,v $ $Revision: 1.13 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 96
    throw p1
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 109
    throw p1
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
